# $OpenBSD: Makefile,v 1.5 2004/11/28 13:18:45 alek Exp $

COMMENT=		"filter to print a wide range of file formats"

DISTNAME=		apsfilter-7.2.5
PKGNAME=		${DISTNAME}p1
CATEGORIES=		print

HOMEPAGE=		http://www.apsfilter.org/

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.apsfilter.org/download/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-shell=/bin/sh

RUN_DEPENDS=		:psutils-*:print/psutils \
			:a2ps-*:print/a2ps

WRKDIST=		${WRKDIR}/apsfilter/

.include <bsd.port.mk>
