# $OpenBSD: Makefile,v 1.1.1.1 2012/07/06 17:21:11 sthen Exp $

COMMENT=	implementation of the Adaptive Multi Rate speech codec

DISTNAME=	opencore-amr-0.1.3

SHARED_LIBS +=  opencore-amrnb       0.0      # .0.3
SHARED_LIBS +=  opencore-amrwb       0.0      # .0.3

CATEGORIES=	audio

HOMEPAGE=	http://opencore-amr.sourceforge.net/

MAINTAINER=	Jan Stary <hans@stare.cz>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	http://www.voiceage.com/amr_licterms.php
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= http://www.voiceage.com/amr_licterms.php
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += m

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=opencore-amr/}

SEPARATE_BUILD=		yes
CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		gnu # oh my.

.include <bsd.port.mk>
