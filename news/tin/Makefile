# ex:ts=8
# OpenBSD makefile for:	tin
# Version required:	tinpre-1.4-19990216
# Date created:		18 November 1997
# Whom:			gene
#
# $OpenBSD: Makefile,v 1.12 2000/04/09 17:37:45 espie Exp $
#

DISTNAME=		tinpre-1.4-19990216
PKGNAME=		tin-1.4.19990216
CATEGORIES=		news
NEED_VERSION=	1.210
FAKE=No

NO_PACKAGE=		"too much compile time configuration"

MAINTAINER=     	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://nuxi.ucdavis.edu/pub/tin/pre-v1.4/ \
			ftp://ftp.akk.uni-karlsruhe.de/pub/tin/ \
			ftp://ftp.nuxi.com/pub/tin/

EXTRACT_SUFX=		.tgz

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-spooldir=/var/news  \
			--with-libdir=${PREFIX}/lib/news \
			--with-mime-default-charset=US-ASCII \
			--enable-forgery \
			--enable-curses \
			--with-ncurses \
			--enable-mh-mail-handling \
			--enable-break-long-lines \
			--with-coffee
.if defined(NNTP_ONLY)
CONFIGURE_ARGS+=	--enable-nntp-only
.endif
CONFIGURE_ENV=		${SETENV}

MAKE_FILE=		makefile
WRKDIST=         	${WRKDIR}/${DISTNAME:S/pre-1.4//}

ALL_TARGET=		build

.include <bsd.port.mk>
