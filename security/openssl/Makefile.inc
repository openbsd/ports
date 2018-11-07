# $OpenBSD: Makefile.inc,v 1.1 2018/11/07 11:00:29 sthen Exp $

COMMENT?=	TLS/SSL library and tools

DISTNAME?=	openssl-$V
PKGNAME?=	openssl-$V

CATEGORIES?=	security net

HOMEPAGE?=	https://www.openssl.org/

MAINTAINER?=	Stuart Henderson <sthen@openbsd.org>

# OpenSSL
PERMIT_PACKAGE_CDROM?=	Yes

MASTER_SITES?=	https://www.openssl.org/source/ \
		https://www.openssl.org/source/old/${V:C/.$//}/ \
		ftp://ftp.openssl.org/source/
