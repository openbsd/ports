# ex:ts=8
# OpenBSD makefile for:	tin
# Version required:	tinpre-1.4-980730
# Date created:		18 November 1997
# Whom:			gene
#
# $OpenBSD: Makefile,v 1.5 1998/09/08 05:43:35 marc Exp $
#

DISTNAME=		tinpre-1.4-980818
PKGNAME=		tin-1.4.980818
CATEGORIES=		news

NO_CDROM=		"NOFEE:	Can not sell"
NO_PACKAGE=		"too much compile time configuration"

MAINTAINER=     	marc@OpenBSD.ORG

MASTER_SITES=		ftp://nuxi.ucdavis.edu/pub/tin/ \
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

MAKEFILE=		makefile
WRKSRC=         	${WRKDIR}/${DISTNAME:S/pre-1.4//}

ALL_TARGET=		build

.include <bsd.port.mk>
