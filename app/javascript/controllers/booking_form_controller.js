import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking-form"
export default class extends Controller {
  static targets = ["startDate", "endDate", "price", "totalPrice"]

  connect() {
    console.log(this.startDateTarget)
    console.log(this.endDateTarget)
    const today = new Date()
    this.startDateTarget.value = today.toISOString().split("T")[0]
    const tomorrow = new Date(today)
    tomorrow.setDate(tomorrow.getDate() + 1)
    this.endDateTarget.value = tomorrow.toISOString().split("T")[0]
    console.log(this.priceTarget.value)
  }

  calculatePrice() {
    const startDate = new Date(this.startDateTarget.value)
    const endDate = new Date(this.endDateTarget.value)
    const numberOfDays = (endDate - startDate)/(1000*60*60*24)
    const total = numberOfDays * this.priceTarget.value
    this.totalPriceTarget.innerText = "¥" + total
  }
}
