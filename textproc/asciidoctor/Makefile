# $OpenBSD: Makefile,v 1.3 2021/09/02 14:59:45 jeremy Exp $

COMMENT =	better AsciiDoc text proc/publishing software

V =		2.0.10
DISTNAME =	asciidoctor-${V}
FULLPKGNAME =	${DISTNAME}
REVISION =	1

CATEGORIES =	textproc

HOMEPAGE =	https://asciidoctor.org

MAINTAINER =	Ian Darwin <ian@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby
MODRUBY_HANDLE_FLAVORS = No

CONFIGURE_STYLE =	ruby gem
GEM_FLAGS =		--no-format-executable

post-install:
	mv ${PREFIX}/${GEM_LIB}/gems/${DISTNAME}/man/asciidoctor.1 \
	    ${PREFIX}/man/man1

.include <bsd.port.mk>
