# $OpenBSD: Makefile,v 1.16 2012/02/17 13:25:04 ajacoutot Exp $

COMMENT=		filter to print a wide range of file formats

DISTNAME=		apsfilter-7.2.8
REVISION=		4
CATEGORIES=		print

HOMEPAGE=		http://www.apsfilter.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.apsfilter.org/download/

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--prefix='${PREFIX}' \
			--sysconfdir='${SYSCONFDIR}' \
			--with-shell=/bin/sh \
			--with-awk=/usr/bin/awk
USE_GROFF=		Yes

RUN_DEPENDS=		print/a2ps

WRKDIST=		${WRKDIR}/apsfilter/

NO_REGRESS=		Yes

.include <bsd.port.mk>
