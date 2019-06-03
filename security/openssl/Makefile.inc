# $OpenBSD: Makefile.inc,v 1.2 2019/06/03 16:06:56 sthen Exp $

COMMENT?=	TLS/SSL library and tools

DISTNAME?=	openssl-$V
PKGNAME?=	openssl-$V

CATEGORIES?=	security net

HOMEPAGE?=	https://www.openssl.org/

MAINTAINER?=	Stuart Henderson <sthen@openbsd.org>

# OpenSSL
PERMIT_PACKAGE?=	Yes

MASTER_SITES?=	https://www.openssl.org/source/ \
		https://www.openssl.org/source/old/${V:C/.$//}/ \
		ftp://ftp.openssl.org/source/
