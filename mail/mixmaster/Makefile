# $OpenBSD: Makefile,v 1.5 2002/09/14 15:21:14 naddy Exp $

COMMENT=	"client for anonymous remailing"

VERSION=	2.9b37
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

.for i in mix.cfg mix.cfg.ex pubring.* *.alw *.blk *.hlp *.in *.list *.txt
MIXMASTER_FILES+=	${WRKDIST}/conf/$i
.endfor
MIXMASTER_FILES+=	${WRKDIST}/README

post-patch:
	@cp files/Makefile ${WRKSRC}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mix ${PREFIX}/sbin/mixmaster
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mixmaster
	${INSTALL_DATA} ${MIXMASTER_FILES} ${PREFIX}/share/examples/mixmaster
	${INSTALL_DATA} ${WRKDIST}/mix.1 ${PREFIX}/man/man1/mixmaster.1

.include <bsd.port.mk>
