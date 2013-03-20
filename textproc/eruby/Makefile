# $OpenBSD: Makefile,v 1.23 2013/03/20 19:13:50 jeremy Exp $

SHARED_ONLY=		Yes

COMMENT=		interprets Ruby code embedded in a text file

DISTNAME=		eruby-1.0.5
REVISION =		14
CATEGORIES=		textproc	

SHARED_LIBS=		eruby 1.05

HOMEPAGE=		http://modruby.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m ${MODRUBY_WANTLIB}

MASTER_SITES=		${HOMEPAGE}archive/

MODULES=		lang/ruby
MODRUBY_REV=		1.8

LIB_DEPENDS=		${MODRUBY_LIB_DEPENDS}

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	configure.rb
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

MAKE_ENV=		LIBeruby_MAJOR=${LIBeruby_VERSION:R} \
			LIBeruby_MINOR=${LIBeruby_VERSION:E}

USE_GROFF =		Yes
NO_TEST=		Yes

.include <bsd.port.mk>
