# New ports collection makefile for:	MicroEmacs
# Version required:     4.0
# Date created:		9 June 1998
# Whom:			Jason Downs (downsj@downsj.com)
#
# Originally from FreeBSD:
# Date created:         16 Jan 1995
# Whom:                 Thomas Gellekum <tg@FreeBSD.org>
#
# $OpenBSD: Makefile,v 1.1 1998/06/10 06:50:54 downsj Exp $
#

DISTNAME=	uemacs
PKGNAME=	uemacs-4.0
CATEGORIES=	editors
MASTER_SITES=	ftp://aquest.com/pub/uemacs400/disk2/ \
		ftp://informatik.hu-berlin.de/pub/pc/msdos/editors/ \
		ftp://ftp.biomath.jussieu.fr/pub/editors/memacs400/disk2/
DISTFILES=	ue400dev.zip

MAINTAINER=	downsj@downsj.com

BUILD_DEPENDS=	unzip:${PORTSDIR}/archivers/unzip

NO_WRKSUBDIR=	yes
EXTRACT_CMD=		unzip
EXTRACT_BEFORE_ARGS=	-Laq
EXTRACT_AFTER_ARGS=	-d ${WRKDIR}

pre-patch:
	(cd ${WRKDIR}; cp -pR freebsd openbsd)

.include <bsd.port.mk>
