# $OpenBSD: Makefile,v 1.7 2001/11/01 11:11:51 shell Exp $

COMMENT=	"callback framework for C++"

DISTNAME=	libsigc++-1.0.4
CATEGORIES=	devel
NEED_VERSION=	1.488

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	libsigc

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
	@chmod +x ${WRKSRC}/acconfig/*

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${DOCDIR}

.include <bsd.port.mk>
