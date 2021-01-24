# $OpenBSD: Makefile,v 1.2 2021/01/24 18:10:40 kn Exp $

COMMENT =	query the unicode database from the commandline

MODGO_MODNAME =	arp242.net/uni
MODGO_VERSION =	v1.1.1
DISTNAME =	uni-${MODGO_VERSION}

CATEGORIES =	textproc

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go
MODGO_MODULES =	\
	golang.org/x/sys	v0.0.0-20191120155948-bd437916bb0e

.include <bsd.port.mk>
