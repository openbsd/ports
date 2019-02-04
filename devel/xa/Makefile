# $OpenBSD: Makefile,v 1.2 2019/02/04 09:42:01 fcambus Exp $

COMMENT =	portable cross-assembler for MOS 6502 processors

DISTNAME =	xa-2.3.9

CATEGORIES =	devel

HOMEPAGE =	https://www.floodgap.com/retrotech/xa/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c

MASTER_SITES =	https://www.floodgap.com/retrotech/xa/dists/

FIX_EXTRACT_PERMISSIONS = Yes

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}" LD="${CC}" LDFLAGS="${LDFLAGS}"

do-install:
.for f in file65 ldo65 printcbm reloc65 uncpk xa
	${INSTALL_PROGRAM} ${WRKSRC}/${f} ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/man/${f}.1 ${PREFIX}/man/man1
.endfor

.include <bsd.port.mk>
