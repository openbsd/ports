# $OpenBSD: Makefile,v 1.38 2008/06/30 09:22:46 brad Exp $

COMMENT=	GNU make

DISTNAME=	make-3.81
PKGNAME=	g${DISTNAME}p0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=make/}

HOMEPAGE=	http://www.gnu.org/software/make/

MODULES=	devel/gettext

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

FAKE=all
SEPARATE_BUILD=	simple
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --program-prefix="g"
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/config

post-install:
	@chmod ${BINMODE} ${PREFIX}/bin/gmake
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/gmake

# XXX This is the ONE case where we shouldn't be able to cheat on 
# where HOME is coming from, but we can. Looks like gnu-make is bogus...

REGRESS_FLAGS=HOME=/

.include <bsd.port.mk>
