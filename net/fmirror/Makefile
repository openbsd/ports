# $OpenBSD: Makefile,v 1.7 2019/07/12 21:02:23 sthen Exp $

COMMENT=	mirror files and directories from a remote FTP server

DISTNAME=       fmirror-0.8.4
CATEGORIES=	net
REVISION=       0

MASTER_SITES=	ftp://ftp.oav.net/pkg_freebsd/distfiles/

# GPL
PERMIT_PACKAGE=	Yes

NO_TEST=     Yes
WANTLIB=	c

CONFIGURE_STYLE= gnu

MAN1=		fmirror.1

EXAMPLEDIR=	${PREFIX}/share/examples/fmirror

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fmirror ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${MAN1} ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	cd ${WRKSRC}/configs && ${INSTALL_DATA} generic.conf redhat.conf \
		sample.conf ${EXAMPLEDIR}

.include <bsd.port.mk>
