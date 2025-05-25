// Toggle answers functionality
const toggleAnswers = () => {
  const answersContent = document.querySelector('.answers-content');
  const button = document.querySelector('.show-answers-btn');
  
  if (!answersContent || !button) return;
  
  if (answersContent.style.display === 'none' || !answersContent.style.display) {
    answersContent.style.display = 'block';
    button.textContent = 'Hide Answers';
    button.style.background = '#e74c3c';
  } else {
    answersContent.style.display = 'none';
    button.textContent = 'Show Answers';
    button.style.background = '#3498db';
  }
};

// Assessment box click interactions
const initializeAssessmentInteractions = () => {
  const assessmentParagraphs = document.querySelectorAll('.assessment-box p:not(:has(strong)):not(.rating-scale):not(.no-rating):not(:has(em))');
  
  for (const p of assessmentParagraphs) {
    p.addEventListener('click', (e) => {
      // Remove previous selections in this assessment box
      const parentBox = e.target.closest('.assessment-box');
      if (parentBox) {
        const allItems = parentBox.querySelectorAll('p:not(:has(strong)):not(.rating-scale):not(.no-rating):not(:has(em))');
        
        for (const item of allItems) {
          item.classList.remove('selected');
          item.style.backgroundColor = '';
          item.style.borderLeft = '';
          item.style.borderRadius = '';
          item.style.padding = '';
        }
      }
      
      // Add selection to clicked item
      e.target.classList.add('selected');
      e.target.style.backgroundColor = '#e8f5e8';
      e.target.style.borderLeft = '4px solid #27ae60';
      e.target.style.borderRadius = '4px';
      e.target.style.padding = '0.5rem';
    });
  }
};

// Initialize when DOM is loaded
document.addEventListener('DOMContentLoaded', () => {
  initializeAssessmentInteractions();
});

// Make toggleAnswers globally available
window.toggleAnswers = toggleAnswers;
