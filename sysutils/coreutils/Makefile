# $OpenBSD: Makefile,v 1.5 2013/11/09 23:19:03 naddy Exp $

COMMENT =		file, shell and text manipulation utilities

DISTNAME =		coreutils-8.21
REVISION =		0
CATEGORIES =		sysutils

HOMEPAGE =		https://www.gnu.org/software/coreutils/coreutils.html

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread

MASTER_SITES =		${MASTER_SITE_GNU:=coreutils/}
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/gettext

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--program-prefix=g \
			--without-gmp

# Prevent conflicts with: id, gpr and god
post-install:
.for I in gid god gpr
	mv "${PREFIX}/bin/$I" "${PREFIX}/bin/g$I"
	mv "${PREFIX}/man/man1/$I.1" "${PREFIX}/man/man1/g$I.1"
.endfor

.include <bsd.port.mk>
