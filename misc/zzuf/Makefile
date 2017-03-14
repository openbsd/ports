# $OpenBSD: Makefile,v 1.16 2017/03/14 02:36:36 jca Exp $

BROKEN-hppa=		__sync_lock_test_and_set_4 in zzuf_mutex_lock

COMMENT=		transparent application input fuzzer

VERSION=		0.14
DISTNAME=		zzuf-${VERSION}
REVISION=		0
CATEGORIES=		misc security

MAINTAINER=		Michael McConville <mmcco@mykolab.com>

MASTER_SITES=		https://github.com/samhocevar/zzuf/releases/download/v${VERSION}/

# WTFPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m

MODULES=		gcc4
MODGCC4_ARCHS=		arm

CONFIGURE_STYLE=	gnu
# Necessary?
USE_GROFF=		Yes

.include <bsd.port.mk>
