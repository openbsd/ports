# $OpenBSD: Makefile,v 1.4 2006/07/19 13:41:02 steven Exp $


COMMENT=		"SNPP, TAP, email notification application"

V=0.9.14
DISTNAME=		sendpage-${V}
PKGNAME=		p5-SendPage-${V}p1
CATEGORIES=		comms

HOMEPAGE=		http://sendpage.org/

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sendpage/}

RUN_DEPENDS=	::comms/p5-Device-SerialPort \
		::mail/p5-Mail-Tools \
		::net/p5-Net-SNPP
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=	perl

SAMPLES=	email2page.conf sendpage.cf snpp.conf
DOCS=		Changes FEATURES README THANKS
DOCS2=		PagingCentrals.txt README pc-testing.txt postfix.txt \
		rfc1861.txt sendmail.txt sendpage.php

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sendpage
.for f in ${SAMPLES}
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/share/examples/sendpage
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sendpage
.for f in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/share/doc/sendpage
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sendpage/docs
.for f in ${DOCS2}
	${INSTALL_DATA} ${WRKSRC}/docs/${f} ${PREFIX}/share/doc/sendpage/docs
.endfor

.include <bsd.port.mk>
