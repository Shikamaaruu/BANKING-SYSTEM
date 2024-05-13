import unittest

from BankApp import BankApp
from Exception.Exceptions import CustomerNotFoundException, InvalidAccountException
from Model.entity import Customer
from dao.CustomerAdmin import CustomerAdmin


class Test_Cases(unittest.TestCase):
    def setUp(self):
        self.customer = CustomerAdmin()
        self.BankApp = BankApp(Customer(0, "", "", "", "", "", ""))

    def test_create_customer(self):
        temp_cust = self.customer.create_customer(Customer(0, first_name="name", last_name="name2", dob="2000-01-01", email="name@example.com", phone_number = "7887337481", address = "kolhapur"))
        self.assertNotEqual(temp_cust,None)

    def test_get_customer(self):
        with self.assertRaises(CustomerNotFoundException):
            temp_cust = self.customer.get_customer(customer_id=450)

    def test_get_transactions(self):
        with self.assertRaises(InvalidAccountException):
            self.BankApp.set_current_account()
            transactions = self.BankApp.getTransactions()
