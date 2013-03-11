# $OpenBSD: Makefile,v 1.6 2013/03/11 11:35:44 espie Exp $

COMMENT=	subtitle ripper, used with transcode

DISTNAME=	subtitleripper-0.3-4
PKGNAME=	subtitleripper-0.3.4
REVISION=	1
EXTRACT_SUFX=	.tgz
CATEGORIES=	multimedia

HOMEPAGE=	http://subtitleripper.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=subtitleripper/}

WANTLIB=	c m z png netpbm

USE_GMAKE=	Yes
LIB_DEPENDS=	graphics/png \
		graphics/netpbm
RUN_DEPENDS=	multimedia/transcode

WRKDIST=        ${WRKDIR}/subtitleripper
NO_TEST=	Yes

pre-configure:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/Makefile

.include <bsd.port.mk>
