# $OpenBSD: Makefile,v 1.6 2002/10/30 15:07:54 naddy Exp $

COMMENT=	"client for anonymous remailing"

VERSION=	2.9b40
DISTNAME=	mixmaster-${VERSION}
CATEGORIES=	mail security

MAINTAINER=	Nikolay Sturm <sturm@sec.informatik.tu-darmstadt.de>

PERMIT_PACKAGE_CDROM=	"only with patch notice"
PERMIT_PACKAGE_FTP=	"only with patch notice"
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mixmaster/}

HOMEPAGE=	http://mixmaster.sourceforge.net/

WRKSRC=		${WRKDIST}/Src

NO_REGRESS=	Yes

MAKE_ENV=	SYSCONFDIR="${SYSCONFDIR}/mixmaster"

MIXMASTER_FILES=	${WRKDIST}/conf/* ${WRKDIST}/README

post-patch:
	@cp files/Makefile ${WRKSRC}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mix ${PREFIX}/sbin/mixmaster
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mixmaster
	${INSTALL_DATA} ${MIXMASTER_FILES} ${PREFIX}/share/examples/mixmaster
	${INSTALL_DATA} ${WRKDIST}/mix.1 ${PREFIX}/man/man1/mixmaster.1

.include <bsd.port.mk>
