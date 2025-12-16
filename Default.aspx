<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WAPP_ASSIGNEMNT._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main class="fade-in">
        <!-- Hero Section - Wayground Style -->
        <section class="hero-modern">
            <div class="container">
                <div class="row align-items-center min-vh-75">
                    <div class="col-lg-6 hero-content">
                        <span class="eyebrow animate-slide-up">LEARNING MADE ENGAGING</span>
                        <h1 class="hero-title-mega animate-slide-up" style="animation-delay: 0.1s;">
                            Bridge classroom realities and <span class="text-gradient-primary">curriculum expectations</span>
                        </h1>
                        <p class="hero-subtitle-large mb-5 animate-slide-up" style="animation-delay: 0.2s;">
                            The platform that puts teachers first. Empower your learning journey with engaging quizzes and self-assessment tools designed for modern education.
                        </p>
                        <div class="hero-ctas animate-slide-up" style="animation-delay: 0.3s;">
                            <% if (Session["UserID"] == null) { %>
                                <a href="Register.aspx" class="btn btn-primary btn-lg btn-hero me-3 glow-on-hover">Sign up for free</a>
                                <a href="PublicQuizzes.aspx" class="btn btn-outline-primary btn-lg btn-hero">Explore Quizzes →</a>
                            <% } else { %>
                                <a href="PublicQuizzes.aspx" class="btn btn-primary btn-lg btn-hero me-3">Browse Quizzes</a>
                                <% if (Session["UserRole"].ToString() == "Member") { %>
                                    <a href="MyQuizzes.aspx" class="btn btn-outline-primary btn-lg btn-hero">My Quizzes →</a>
                                <% } %>
                            <% } %>
                        </div>
                        <div class="hero-trust mt-5 animate-slide-up" style="animation-delay: 0.4s;">
                            <small class="text-muted d-block mb-2">TRUSTED BY EDUCATORS IN MALAYSIA</small>
                            <div class="d-flex align-items-center gap-4">
                                <div class="trust-stat">
                                    <strong class="d-block fs-4 text-primary">PRACTICE</strong>
                                    <small class="text-muted">Makes Perfect</small>
                                </div>
                                <div class="vr" style="height: 40px;"></div>
                                <div class="trust-stat">
                                    <strong class="d-block fs-4 text-secondary">MASTERY</strong>
                                    <small class="text-muted">Through Practice</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 d-none d-lg-block">
                        <div class="hero-image-container animate-fade-in" style="animation-delay: 0.2s;">
                            <img src="logo.png" alt="QuizMaster Logo" class="hero-logo-large float" />
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Join Live Quiz Section - NEW -->
        <section class="live-quiz-banner">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-8">
                        <div class="live-quiz-content">
                            <div class="live-badge">
                                <i class="bi bi-broadcast"></i>
                                <span>LIVE</span>
                            </div>
                            <h2 class="mb-3">Join a Live Quiz Session</h2>
                            <p class="mb-0">Got a quiz code? Enter it below to join an interactive live quiz session and compete with others in real-time!</p>
                        </div>
                    </div>
                    <div class="col-lg-4 text-lg-end mt-3 mt-lg-0">
                        <a href="JoinQuiz.aspx" class="btn btn-warning btn-lg px-5">
                            <i class="bi bi-box-arrow-in-right me-2"></i>
                            Join Now
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <!-- Features Section - Wayground Style -->
        <section class="features-section">
            <div class="container">
                <div class="section-header-modern">
                    <span class="eyebrow">POWERFUL FEATURES</span>
                    <h2>Everything you need for effective learning</h2>
                    <p>Comprehensive tools designed for educators and learners</p>
                </div>
                
                <div class="row g-4">
                    <div class="col-md-4">
                        <div class="feature-card-modern scroll-reveal">
                            <div class="feature-icon-large">📚</div>
                            <h3 class="feature-title">Create Quizzes</h3>
                            <p class="feature-description">
                                Design custom quizzes with multiple-choice questions. 
                                Perfect for teachers, students, and knowledge sharing.
                            </p>
                            <% if (Session["UserID"] == null) { %>
                                <a class="btn btn-primary mt-3" href="Register.aspx">Get Started →</a>
                            <% } else if (Session["UserRole"].ToString() == "Member") { %>
                                <a class="btn btn-primary mt-3" href="MyQuizzes.aspx">Create Quiz →</a>
                            <% } %>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="feature-card-modern scroll-reveal" style="animation-delay: 0.1s;">
                            <div class="feature-icon-large">🎯</div>
                            <h3 class="feature-title">Take Quizzes</h3>
                            <p class="feature-description">
                                Test your knowledge across various categories. Public and 
                                private quizzes for practice and improvement.
                            </p>
                            <a class="btn btn-primary mt-3" href="PublicQuizzes.aspx">Browse Quizzes →</a>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="feature-card-modern scroll-reveal" style="animation-delay: 0.2s;">
                            <div class="feature-icon-large">📊</div>
                            <h3 class="feature-title">Track Progress</h3>
                            <p class="feature-description">
                                Monitor quiz scores and track learning progress. 
                                Detailed history and analytics for members.
                            </p>
                            <% if (Session["UserID"] == null) { %>
                                <a class="btn btn-primary mt-3" href="Login.aspx">Login →</a>
                            <% } else if (Session["UserRole"].ToString() == "Member") { %>
                                <a class="btn btn-primary mt-3" href="MyScores.aspx">View Scores →</a>
                            <% } %>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Categories Section - Wayground Style -->
        <section class="features-section" style="background: var(--accent-cream);">
            <div class="container">
                <div class="section-header-modern">
                    <span class="eyebrow">EXPLORE BY CATEGORY</span>
                    <h2>Popular Quiz Categories</h2>
                    <p>Choose from our curated selection of learning topics</p>
                </div>
                
                <div class="row g-4">
                    <!-- Science -->
                    <div class="col-md-3 col-sm-6">
                        <div class="feature-card-modern scroll-reveal h-100 text-center">
                            <div class="feature-icon-large">🔬</div>
                            <h4 class="feature-title">Science</h4>
                            <p class="feature-description">Explore physics, chemistry, biology and more</p>
                            <a href="PublicQuizzes.aspx" class="btn btn-sm btn-outline-primary mt-2">
                                Explore →
                            </a>
                        </div>
                    </div>
                    
                    <!-- Mathematics -->
                    <div class="col-md-3 col-sm-6">
                        <div class="feature-card-modern scroll-reveal h-100 text-center" style="animation-delay: 0.1s;">
                            <div class="feature-icon-large">🔢</div>
                            <h4 class="feature-title">Mathematics</h4>
                            <p class="feature-description">Master algebra, geometry, and calculus</p>
                            <a href="PublicQuizzes.aspx" class="btn btn-sm btn-outline-primary mt-2">
                                Explore →
                            </a>
                        </div>
                    </div>
                    
                    <!-- History -->
                    <div class="col-md-3 col-sm-6">
                        <div class="feature-card-modern scroll-reveal h-100 text-center" style="animation-delay: 0.2s;">
                            <div class="feature-icon-large">📜</div>
                            <h4 class="feature-title">History</h4>
                            <p class="feature-description">Learn about world history and civilizations</p>
                            <a href="PublicQuizzes.aspx" class="btn btn-sm btn-outline-primary mt-2">
                                Explore →
                            </a>
                        </div>
                    </div>
                    
                    <!-- Geography -->
                    <div class="col-md-3 col-sm-6">
                        <div class="feature-card-modern scroll-reveal h-100 text-center" style="animation-delay: 0.3s;">
                            <div class="feature-icon-large">🌍</div>
                            <h4 class="feature-title">Geography</h4>
                            <p class="feature-description">Discover countries, capitals, and cultures</p>
                            <a href="PublicQuizzes.aspx" class="btn btn-sm btn-outline-primary mt-2">
                                Explore →
                            </a>
                        </div>
                    </div>
                    
                    <!-- Literature -->
                    <div class="col-md-3 col-sm-6">
                        <div class="feature-card-modern scroll-reveal h-100 text-center" style="animation-delay: 0.4s;">
                            <div class="feature-icon-large">📚</div>
                            <h4 class="feature-title">Literature</h4>
                            <p class="feature-description">Study classic and modern literature</p>
                            <a href="PublicQuizzes.aspx" class="btn btn-sm btn-outline-primary mt-2">
                                Explore →
                            </a>
                        </div>
                    </div>
                    
                    <!-- Technology -->
                    <div class="col-md-3 col-sm-6">
                        <div class="feature-card-modern scroll-reveal h-100 text-center" style="animation-delay: 0.5s;">
                            <div class="feature-icon-large">💻</div>
                            <h4 class="feature-title">Technology</h4>
                            <p class="feature-description">Test your tech knowledge and programming</p>
                            <a href="PublicQuizzes.aspx" class="btn btn-sm btn-outline-primary mt-2">
                                Explore →
                            </a>
                        </div>
                    </div>
                    
                    <!-- Arts -->
                    <div class="col-md-3 col-sm-6">
                        <div class="feature-card-modern scroll-reveal h-100 text-center" style="animation-delay: 0.6s;">
                            <div class="feature-icon-large">🎨</div>
                            <h4 class="feature-title">Arts</h4>
                            <p class="feature-description">Explore music, painting, and creativity</p>
                            <a href="PublicQuizzes.aspx" class="btn btn-sm btn-outline-primary mt-2">
                                Explore →
                            </a>
                        </div>
                    </div>
                    
                    <!-- General Knowledge -->
                    <div class="col-md-3 col-sm-6">
                        <div class="feature-card-modern scroll-reveal h-100 text-center" style="animation-delay: 0.7s;">
                            <div class="feature-icon-large">🧠</div>
                            <h4 class="feature-title">General Knowledge</h4>
                            <p class="feature-description">Challenge yourself with diverse topics</p>
                            <a href="PublicQuizzes.aspx" class="btn btn-sm btn-outline-primary mt-2">
                                Explore →
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Stats Section - Wayground Style -->
        <section class="stats-modern">
            <div class="container">
                <div class="section-header-modern text-white mb-5">
                    <span class="eyebrow text-white">TRUSTED BY EDUCATORS</span>
                    <h2 class="text-white">Join thousands of learners worldwide</h2>
                </div>
                
                <div class="row">
                    <div class="col-md-4">
                        <div class="stat-card-modern">
                            <span class="stat-number-huge"><asp:Label ID="lblTotalQuizzes" runat="server" Text="0"></asp:Label>+</span>
                            <span class="stat-label-modern">Total Quizzes</span>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="stat-card-modern">
                            <span class="stat-number-huge"><asp:Label ID="lblTotalUsers" runat="server" Text="0"></asp:Label>+</span>
                            <span class="stat-label-modern">Active Learners</span>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="stat-card-modern">
                            <span class="stat-number-huge"><asp:Label ID="lblTotalAttempts" runat="server" Text="0"></asp:Label>+</span>
                            <span class="stat-label-modern">Quiz Attempts</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- CTA Section - Wayground Style -->
        <section class="cta-section-modern">
            <div class="container">
                <span class="eyebrow">GET STARTED TODAY</span>
                <h2 class="cta-title-mega">Ready to transform your learning experience?</h2>
                <p class="cta-subtitle">
                    Join thousands of educators and students who are already using QuizMaster 
                    to create engaging, effective learning experiences.
                </p>
                <div class="cta-buttons">
                    <% if (Session["UserID"] == null) { %>
                        <a href="Register.aspx" class="btn btn-primary btn-lg btn-hero glow-on-hover">
                            Sign up for free
                        </a>
                        <a href="PublicQuizzes.aspx" class="btn btn-outline-primary btn-lg btn-hero">
                            Explore Quizzes →
                        </a>
                    <% } else { %>
                        <a href="PublicQuizzes.aspx" class="btn btn-primary btn-lg btn-hero">
                            Start Learning
                        </a>
                        <% if (Session["UserRole"].ToString() == "Member") { %>
                            <a href="MyQuizzes.aspx" class="btn btn-outline-primary btn-lg btn-hero">
                                Create Quiz →
                            </a>
                        <% } %>
                    <% } %>
                </div>
                
                <div class="mt-5 pt-4">
                    <div class="page-header" style="border: none; background: transparent; padding: 2rem 0;">
                        <span class="eyebrow text-center d-block">OUR MISSION</span>
                        <h3 class="section-title text-center mb-4">Building the future of digital learning</h3>
                        <p class="lead text-center" style="max-width: 800px; margin: 0 auto;">
                            To build an explorative, engaging & systematic web application that empowers 
                            registered users to create and participate in quizzes for self-assessment, 
                            while allowing public visitors to explore the world of digital e-learning.
                        </p>
                    </div>
                </div>
            </div>
        </section>
    </main>

</asp:Content>
