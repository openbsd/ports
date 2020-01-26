# $OpenBSD: Makefile,v 1.6 2020/01/26 12:48:36 ajacoutot Exp $

COMMENT=	client-side library to implement the iSCSI protocol

GH_ACCOUNT=	sahlberg
GH_PROJECT=	libiscsi
GH_TAGNAME=	1.19.0
CATEGORIES=	devel net

SHARED_LIBS=	iscsi	2.0

HOMEPAGE=	https://github.com/sahlberg/libiscsi

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+, GPLv2+ and PD
PERMIT_PACKAGE=	Yes

WANTLIB=	c

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CONFIGURE_STYLE= autoreconf

.include <bsd.port.mk>
