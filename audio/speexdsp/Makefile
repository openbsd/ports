# $OpenBSD: Makefile,v 1.3 2019/06/17 17:11:38 naddy Exp $

COMMENT=	speech processing DSP library

DISTNAME=	speexdsp-1.2.0
CATEGORIES=	audio
HOMEPAGE=	https://speex.org/
SHARED_LIBS=	speexdsp	1.1	# 6.1

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://downloads.xiph.org/releases/speex/

WANTLIB=	m

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
