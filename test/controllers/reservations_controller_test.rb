require 'test_helper'

class ReservationsControllerTest < ActionController::TestCase
  setup do
    @reservation = reservations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reservations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reservation" do
    assert_difference('Reservation.count') do
      post :create, reservation: { at_time: @reservation.at_time, datetime: @reservation.datetime, email: @reservation.email, first_name: @reservation.first_name, integer: @reservation.integer, last_name: @reservation.last_name, phone_no: @reservation.phone_no, requests: @reservation.requests, table_for: @reservation.table_for, text: @reservation.text }
    end

    assert_redirected_to reservation_path(assigns(:reservation))
  end

  test "should show reservation" do
    get :show, id: @reservation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reservation
    assert_response :success
  end

  test "should update reservation" do
    patch :update, id: @reservation, reservation: { at_time: @reservation.at_time, datetime: @reservation.datetime, email: @reservation.email, first_name: @reservation.first_name, integer: @reservation.integer, last_name: @reservation.last_name, phone_no: @reservation.phone_no, requests: @reservation.requests, table_for: @reservation.table_for, text: @reservation.text }
    assert_redirected_to reservation_path(assigns(:reservation))
  end

  test "should destroy reservation" do
    assert_difference('Reservation.count', -1) do
      delete :destroy, id: @reservation
    end

    assert_redirected_to reservations_path
  end
end
