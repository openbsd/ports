# $OpenBSD: Makefile,v 1.11 2015/07/26 03:46:07 jeremy Exp $

COMMENT =	discount implementation of John Gruber's Markdown

DISTNAME =	rdiscount-2.1.8
CATEGORIES =	textproc

# BSD
PERMIT_PACKAGE_CDROM = Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext

MODRUBY_TEST = ruby
MODRUBY_TEST_TARGET = -e 'ARGV.each{|f| require f}' ./test/*_test.rb

post-install:
	cd ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man && \
		mv rdiscount.1 ${WRKINST}/${LOCALBASE}/man/man1/rdiscount${GEM_MAN_SUFFIX}.1 && \
		mv markdown.7 ${WRKINST}/${LOCALBASE}/man/man7/markdown${GEM_MAN_SUFFIX}.7 && \
		cd .. && rm -r man

.include <bsd.port.mk>
