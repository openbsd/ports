# $OpenBSD: Makefile,v 1.4 2001/06/20 11:12:34 shell Exp $

COMMENT=	"callback framework for C++"

DISTNAME=	libsigc++-1.0.3
CATEGORIES=	devel
NEED_VERSION=	1.414

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	libsigc

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

DOCFILE=	API FAQ UML conventions diagrams marshal \
		powerusers requirements riscos signals
DOCDIR=		${PREFIX}/share/doc/libsigc++

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
.for i in ${DOCFILE}
	${INSTALL_DATA} ${WRKSRC}/doc/$i ${DOCDIR}/$i
.endfor

.include <bsd.port.mk>
