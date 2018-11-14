# $OpenBSD: Makefile,v 1.3 2018/11/14 19:23:29 jasper Exp $

COMMENT =		detect if we are running in a virtual machine

DISTNAME =		virt-what-1.19
CATEGORIES =		sysutils

HOMEPAGE =		https://people.redhat.com/~rjones/virt-what/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/files/

WANTLIB += c

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
