# $OpenBSD: Makefile,v 1.22 2015/12/24 08:16:06 jasper Exp $

COMMENT=		common automake macros for GNOME

GNOME_PROJECT=		gnome-common
GNOME_VERSION=		3.18.0
REVISION=		0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome

# for ax_check_enable_debug.m4 and ax_code_coverage.m4 to prevent a conflict
RUN_DEPENDS=		devel/autoconf-archive

post-install:
	rm ${PREFIX}/share/aclocal/ax_*

.include <bsd.port.mk>
