# $OpenBSD: Makefile,v 1.8 2018/04/05 11:53:44 jca Exp $

COMMENT=	implementation of the Adaptive Multi Rate speech codec

DISTNAME=	opencore-amr-0.1.5

SHARED_LIBS +=  opencore-amrnb       0.0      # .0.3
SHARED_LIBS +=  opencore-amrwb       0.0      # .0.3

CATEGORIES=	audio

HOMEPAGE=	http://opencore-amr.sourceforge.net/

# Apache 2.0
PERMIT_PACKAGE_CDROM=	http://www.voiceage.com/amr_licterms.php
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += m

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=opencore-amr/}

SEPARATE_BUILD=		yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
