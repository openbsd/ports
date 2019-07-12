# $OpenBSD: Makefile,v 1.8 2019/07/12 20:47:58 sthen Exp $

COMMENT=	subtitle ripper, used with transcode

DISTNAME=	subtitleripper-0.3-4
PKGNAME=	subtitleripper-0.3.4
REVISION=	1
EXTRACT_SUFX=	.tgz
CATEGORIES=	multimedia
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=	http://subtitleripper.sourceforge.net/

# GPL
PERMIT_PACKAGE=	Yes

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
