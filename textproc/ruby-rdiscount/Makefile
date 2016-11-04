# $OpenBSD: Makefile,v 1.12 2016/11/04 21:43:47 jeremy Exp $

COMMENT =	discount implementation of John Gruber's Markdown

DISTNAME =	rdiscount-2.2.0.1
CATEGORIES =	textproc

# BSD
PERMIT_PACKAGE_CDROM = Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext

TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST =	ruby
MODRUBY_TEST_TARGET = -e 'ARGV.each{|f| require f}' ./test/*_test.rb

post-install:
	cd ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man && \
		mv rdiscount.1 ${WRKINST}/${LOCALBASE}/man/man1/rdiscount${GEM_MAN_SUFFIX}.1 && \
		mv markdown.7 ${WRKINST}/${LOCALBASE}/man/man7/markdown${GEM_MAN_SUFFIX}.7 && \
		cd .. && rm -r man

.include <bsd.port.mk>
