# $OpenBSD: Makefile,v 1.12 2002/12/29 20:19:11 fgsch Exp $

COMMENT=	"callback framework for C++"

DISTNAME=	libsigc++-1.0.4
CATEGORIES=	devel

HOMEPAGE=	http://libsigc.sf.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libsigc/}

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/scripts

DOCDIR=		${PREFIX}/share/doc/libsigc++/

post-patch:
	@cd ${WRKSRC}/scripts; \
	${PATCH} --forward --quiet -E < \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig && \
	${PATCH} --forward --quiet -E < \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${DOCDIR}

do-regress:
.for i in handles misc signals
	@cd ${WRKSRC}/tests/$i; ${MAKE} check-TESTS
.endfor

.include <bsd.port.mk>
