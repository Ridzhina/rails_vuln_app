class Level1::PostsController < ApplicationController
  before_action :set_level1_post, only: %i[ show edit update destroy ]

  # GET /level1/posts or /level1/posts.json
  def index
    @level1_posts = Level1::Post.all
  end

  # GET /level1/posts/1 or /level1/posts/1.json
  def show
  end

  # GET /level1/posts/new
  def new
    @level1_post = Level1::Post.new
  end

  # GET /level1/posts/1/edit
  def edit
  end

  # POST /level1/posts or /level1/posts.json
  def create
    @level1_post = Level1::Post.new(level1_post_params)

    respond_to do |format|
      if @level1_post.save
        format.html { redirect_to @level1_post, notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @level1_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @level1_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /level1/posts/1 or /level1/posts/1.json
  def update
    respond_to do |format|
      if @level1_post.update(level1_post_params)
        format.html { redirect_to @level1_post, notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @level1_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @level1_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /level1/posts/1 or /level1/posts/1.json
  def destroy
    @level1_post.destroy!

    respond_to do |format|
      format.html { redirect_to level1_posts_path, status: :see_other, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_level1_post
      @level1_post = Level1::Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def level1_post_params
      params.require(:level1_post).permit(:title, :body)
    end
end
