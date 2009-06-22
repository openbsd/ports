# $OpenBSD: Makefile,v 1.9 2009/06/22 17:00:24 naddy Exp $

SHARED_ONLY=		Yes

COMMENT=		interprets Ruby code embedded in a text file

DISTNAME=		eruby-1.0.5
PKGNAME=		${DISTNAME}p6
CATEGORIES=		textproc	

SHARED_LIBS=		eruby 1.05

HOMEPAGE=		http://modruby.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=		${HOMEPAGE}archive/

MODULES=		lang/ruby

LIB_DEPENDS=		ruby::lang/ruby

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	configure.rb
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

MAKE_ENV=		LIBeruby_MAJOR=${LIBeruby_VERSION:R} \
			LIBeruby_MINOR=${LIBeruby_VERSION:E}

NO_REGRESS=		Yes

.include <bsd.port.mk>
