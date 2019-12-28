# $OpenBSD: Makefile,v 1.1.1.1 2019/12/28 22:58:05 abieber Exp $

COMMENT =	query the unicode database from the commandline

DISTNAME =	uni-1.0.0

CATEGORIES =	textproc

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MASTER_SITES =	https://deftly.net/dist/

MODULES =	lang/go
MODGO_TYPE =	bin

ALL_TARGET =	arp242.net/uni

.include <bsd.port.mk>
