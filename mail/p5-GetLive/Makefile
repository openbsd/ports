# $OpenBSD: Makefile,v 1.1.1.1 2007/10/10 15:17:49 merdely Exp $

COMMENT=	automatically fetch hotmail.com email

DISTNAME=	GetLive_0_54
PKGNAME=	p5-GetLive-0.54
CATEGORIES=	mail perl5
EXTRACT_SUFX=	.tgz

MAINTAINER=	Michael Erdely <merdely@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=getlive/}

RUN_DEPENDS=	:curl->=7.15.5:net/curl \
		::mail/procmail \
		::www/p5-URI

PKG_ARCH=	*

NO_BUILD=	Yes
NO_REGRESS=	Yes

PROGS=		GetLive SmtpAuthForward SmtpForward
DOCS=		License Manual

WRKDIST=	${WRKDIR}

post-patch:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},' \
		${WRKSRC}/{GetLive.pl,Manual}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/GetLive.pl ${PREFIX}/bin/GetLive
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/GetLive
	${INSTALL_SCRIPT} ${WRKSRC}/SmtpAuthForward.pl \
		${PREFIX}/share/examples/GetLive/
	${INSTALL_SCRIPT} ${WRKSRC}/SmtpForward.pl \
		${PREFIX}/share/examples/GetLive/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/GetLive
	${INSTALL_DATA} ${WRKSRC}/{License,Manual} ${PREFIX}/share/doc/GetLive

.include <bsd.port.mk>
