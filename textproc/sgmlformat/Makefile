# New ports collection makefile for:	sgmlformat
# Version required:	1.6
# Date created:		July 16, 1997
# Whom:			jfieber
#
# $FreeBSD: Makefile,v 1.9 1998/02/21 21:59:37 jfieber Exp $
# $OpenBSD: Makefile,v 1.9 2000/10/07 16:54:14 matthieu Exp $
#

DISTNAME=	sgmlformat-1.7
CATEGORIES=	textproc print
NEED_VERSION=	 1.230
MASTER_SITES=	http://fallout.campusview.indiana.edu/ports/distfiles/

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	onsgmls::textproc/openjade
RUN_DEPENDS+=	${PREFIX}/share/sgml/linuxdoc::textproc/linuxdoc \
		${PREFIX}/share/sgml/docbook::textproc/docbook

FAKE_FLAGS=PREFIX=${PREFIX}

.include <bsd.port.mk>
