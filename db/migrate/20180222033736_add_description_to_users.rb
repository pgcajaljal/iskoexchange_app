=begin
    Description : Migration file for additional columns of the User Model
    Copyright (C) 2018  Ivan Balingit

    This is a course requirement for CS 192 Software Engineering II under the supervision of Asst. Prof. Ma. Rowena C. Solamo of the Department of Computer Science, College of Engineering, University of the Philippines, Diliman for the AY 2015-2016
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    You should have received a copy of the GNU General Public License
    along with this program.  If not, see https://www.gnu.org/licenses/.

     **CHANGELOG**
     Ivan Balingit 2/22/18 - Inital Source Code

     File created on: 2/22/18
     Developer: Ivan Balingit
     Client: UP Diliman Students
     IskoExchange is a platform for UP students to ask questions and share insights related to UP
=end

class AddDescriptionToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :description, :text
    add_column :users, :education_degree, :string
    add_column :users, :education_school, :string
    add_column :users, :show_education, :boolean, default: true
    add_column :users, :employment_position, :string
    add_column :users, :employment_company, :string
    add_column :users, :show_employment, :boolean, default: true
  end
end
