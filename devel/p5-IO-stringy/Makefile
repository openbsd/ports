# $OpenBSD: Makefile,v 1.3 2001/04/05 00:18:28 naddy Exp $

COMMENT=		"in-core objects like strings and arrays for I/O"

VERSION=		1.220
DISTNAME=		IO-stringy-${VERSION}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
NEED_VERSION=		1.384

MAINTAINER=		Shell Hung <i@shellhung.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= 	IO

CONFIGURE_STYLE= perl

# Install documentation
# It like pure document more than examples

EG_DIR=			${WRKBUILD}/docs
EG_LOC=			${PREFIX}/share/doc/p5-IO-stringy
EG_FILES=		index-menu.html index.html index.menu
EG_IO=			AtomicFile InnerFile Lines Scalar Stringy \
			Wrap WrapTie ScalarArray
EG_ICONS=		h1bullet h2bullet zeegee

post-install:
	${INSTALL_DATA_DIR} ${EG_LOC}/IO/icons
.for i in ${EG_FILES}
	${INSTALL_DATA} ${EG_DIR}/$i ${EG_LOC}/$i
.endfor
.for i in ${EG_IO}
	${INSTALL_DATA} ${EG_DIR}/IO/$i.pm.html ${EG_LOC}/IO/$i.pm.html
.endfor
.for i in ${EG_ICONS}
	${INSTALL_DATA} ${EG_DIR}/IO/icons/$i.gif ${EG_LOC}/IO/icons/$i.gif
.endfor

.include <bsd.port.mk>
