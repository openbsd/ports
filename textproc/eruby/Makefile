# $OpenBSD: Makefile,v 1.1.1.1 2006/10/31 14:38:17 dhill Exp $

SHARED_ONLY=		Yes

COMMENT=		"interprets Ruby code embedded in a text file"

DISTNAME=		eruby-1.0.5	
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
