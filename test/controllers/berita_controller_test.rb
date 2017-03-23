require 'test_helper'

class BeritaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beritum = berita(:one)
  end

  test "should get index" do
    get berita_url
    assert_response :success
  end

  test "should get new" do
    get new_beritum_url
    assert_response :success
  end

  test "should create beritum" do
    assert_difference('Beritum.count') do
      post berita_url, params: { beritum: { isi: @beritum.isi, judul: @beritum.judul, kategori: @beritum.kategori, slug: @beritum.slug } }
    end

    assert_redirected_to beritum_url(Beritum.last)
  end

  test "should show beritum" do
    get beritum_url(@beritum)
    assert_response :success
  end

  test "should get edit" do
    get edit_beritum_url(@beritum)
    assert_response :success
  end

  test "should update beritum" do
    patch beritum_url(@beritum), params: { beritum: { isi: @beritum.isi, judul: @beritum.judul, kategori: @beritum.kategori, slug: @beritum.slug } }
    assert_redirected_to beritum_url(@beritum)
  end

  test "should destroy beritum" do
    assert_difference('Beritum.count', -1) do
      delete beritum_url(@beritum)
    end

    assert_redirected_to berita_url
  end
end
