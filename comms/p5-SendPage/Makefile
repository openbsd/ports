# $OpenBSD: Makefile,v 1.11 2013/03/11 01:30:27 espie Exp $


COMMENT=		SNPP, TAP, email notification application

V=1.000003
DISTNAME=		sendpage-${V}
PKGNAME=		p5-SendPage-${V}
CATEGORIES=		comms

HOMEPAGE=		http://sendpage.org/

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sendpage/}

RUN_DEPENDS=	comms/p5-Device-SerialPort \
		mail/p5-Mail-Tools \
		net/p5-Net-SNPP \
		databases/p5-DBI
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=	perl

SAMPLES=	email2page.conf sendpage.cf snpp.conf
DOCS=		Changes FEATURES README THANKS
DOCS2=		PagingCentrals.txt README pc-testing.txt postfix.txt \
		sendmail.txt sendpage.php
USE_GROFF =	Yes

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
