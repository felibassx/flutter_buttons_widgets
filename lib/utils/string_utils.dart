String cutText(String text, int cut) {
  if (text.length > cut) {
    return text.substring(0, cut) + '...';
  } else {
    return text;
  }
}
