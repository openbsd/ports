# $OpenBSD: Makefile,v 1.13 2015/08/25 11:37:02 jca Exp $

COMMENT=		JSON implementation in C

DISTNAME=		json-c-0.12
CATEGORIES=		devel
REVISION=		0

SHARED_LIBS +=  json-c                    0.0 # 2.1

HOMEPAGE=		http://oss.metaparadigm.com/json-c/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =		https://s3.amazonaws.com/json-c_releases/releases/

CONFIGURE_STYLE=	autoconf autoheader
AUTOCONF_VERSION=	2.69

# not enabled by default at present, but we want to make sure we
# don't use it if it's later enabled as it disables using random(4).
# (the cpuid code will probably break with PIE on i386 too).
CONFIGURE_ARGS=		--disable-rdrand

# wrong mtime in 0.12
post-extract:
	touch ${WRKSRC}/config.h.in

.include <bsd.port.mk>
