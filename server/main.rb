# encoding: utf-8
require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require_relative '../lib/device'

get '/' do
  @devices = Device.all
  erb :index
end

get '/devices/on' do
  Device.all.turn_on
end

get '/devices/off' do
  Device.all.turn_off
end

get '/devices/:id/on' do
  Device.find(params[:id]).turn_on
end

get '/devices/:id/off' do
  Device.find(params[:id]).turn_off
end

helpers do
  def checked(status)
    (status == :on) ? ' checked="checked"' : ''
  end
end