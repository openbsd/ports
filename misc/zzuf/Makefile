# $OpenBSD: Makefile,v 1.15 2016/04/04 10:56:46 naddy Exp $

BROKEN-arm=		__sync_lock_test_and_set_4 in zzuf_mutex_lock
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

CONFIGURE_STYLE=	gnu
# Necessary?
USE_GROFF=		Yes

.include <bsd.port.mk>
