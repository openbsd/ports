# $OpenBSD: Makefile.inc,v 1.1.1.1 2015/11/12 15:18:47 sthen Exp $

CATEGORIES+=	security security/yubico

MAINTAINER?=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE?=	https://developers.yubico.com/${YK_PROJECT}/

# BSD
PERMIT_PACKAGE_CDROM?=	Yes

MASTER_SITES?=	https://developers.yubico.com/${YK_PROJECT}/releases/
