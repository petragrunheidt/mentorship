require "rails_helper"

RSpec.describe "/mentees", type: :request do
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Mentee.create! valid_attributes
      get mentees_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      mentee = Mentee.create! valid_attributes
      get mentee_url(mentee)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_mentee_url

      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      mentee = Mentee.create! valid_attributes
      get edit_mentee_url(mentee)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Mentee" do
        expect {
          post mentees_url, params: {mentee: valid_attributes}
        }.to change(Mentee, :count).by(1)
      end

      it "redirects to the created mentee" do
        post mentees_url, params: {mentee: valid_attributes}
        expect(response).to redirect_to(mentee_url(Mentee.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Mentee" do
        expect {
          post mentees_url, params: {mentee: invalid_attributes}
        }.to change(Mentee, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post mentees_url, params: {mentee: invalid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested mentee" do
        mentee = Mentee.create! valid_attributes
        patch mentee_url(mentee), params: {mentee: new_attributes}
        mentee.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the mentee" do
        mentee = Mentee.create! valid_attributes
        patch mentee_url(mentee), params: {mentee: new_attributes}
        mentee.reload
        expect(response).to redirect_to(mentee_url(mentee))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        mentee = Mentee.create! valid_attributes
        patch mentee_url(mentee), params: {mentee: invalid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested mentee" do
      mentee = Mentee.create! valid_attributes
      expect {
        delete mentee_url(mentee)
      }.to change(Mentee, :count).by(-1)
    end

    it "redirects to the mentees list" do
      mentee = Mentee.create! valid_attributes
      delete mentee_url(mentee)
      expect(response).to redirect_to(mentees_url)
    end
  end
end
