# $OpenBSD: Makefile,v 1.4 2013/03/11 11:35:46 espie Exp $

COMMENT=	mirror files and directories from a remote FTP server

DISTNAME=       fmirror-0.8.4
CATEGORIES=	net

MASTER_SITES=	ftp://ftp.oav.net/pkg_freebsd/distfiles/

# GPL
PERMIT_PACKAGE_CDROM=   Yes

NO_TEST=     Yes
WANTLIB=	c

MAINTAINER=	Vladimir Kotal <vlada@devnull.cz>

CONFIGURE_STYLE= gnu
USE_GROFF =	Yes

MAN1=		fmirror.1

EXAMPLEDIR=	${PREFIX}/share/examples/fmirror

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fmirror ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${MAN1} ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	cd ${WRKSRC}/configs && ${INSTALL_DATA} generic.conf redhat.conf \
		sample.conf ${EXAMPLEDIR}

.include <bsd.port.mk>
