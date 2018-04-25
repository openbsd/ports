# $OpenBSD: Makefile,v 1.2 2018/04/25 14:36:40 jasper Exp $

COMMENT =		detect if we are running in a virtual machine

DISTNAME =		virt-what-1.18
REVISION =		0
CATEGORIES =		sysutils

HOMEPAGE =		https://people.redhat.com/~rjones/virt-what/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/files/

WANTLIB += c

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
