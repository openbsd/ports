# $OpenBSD: Makefile,v 1.26 2010/11/23 18:14:19 jasper Exp $

COMMENT=	GNU Problem Report Management System

DISTNAME=	gnats-3.113.1
REVISION=	8
CATEGORIES=	databases devel
MASTER_SITES=	${MASTER_SITE_GNU:=gnats/}

HOMEPAGE=	http://www.gnu.org/software/gnats/

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=		c

USE_GROFF =	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu dest
CONFIGURE_ARGS+=--with-full-gnats --with-release-based --with-gnats-user=_gnats
CONFIGURE_ENV+=	SEND_PR=/usr/bin/false

INSTALL_TARGET=	install-gnats install-send-pr install-info

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnats/
	sed "s%/var/lib%${TRUEPREFIX}/share%g" \
		${WRKDIST}/gnats/gnats-db.conf > \
		${PREFIX}/share/examples/gnats/gnats-db.conf
	${INSTALL_PROGRAM} ${WRKDIST}/contrib/gnatsweb/gnatsweb.pl \
		${PREFIX}/lib/gnatsweb
	${INSTALL_DATA} ${WRKDIST}/contrib/gnatsweb/gnats.pm \
		${PREFIX}/libdata/perl5/site_perl

.include <bsd.port.mk>
