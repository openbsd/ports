# $OpenBSD: Makefile,v 1.2 2010/09/24 15:27:46 jeremy Exp $

COMMENT=	subtitle ripper, used with transcode

DISTNAME=	subtitleripper-0.3-4
PKGNAME=	subtitleripper-0.3.4
REVISION=	0
EXTRACT_SUFX=	.tgz
CATEGORIES=	multimedia

HOMEPAGE=	http://subtitleripper.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=subtitleripper/}

WANTLIB=	c m z

USE_GMAKE=	Yes
LIB_DEPENDS=	png.>=5::graphics/png \
		netpbm.>=1::graphics/netpbm
RUN_DEPENDS=	::multimedia/transcode

WRKDIST=        ${WRKDIR}/subtitleripper
NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/Makefile

.include <bsd.port.mk>
