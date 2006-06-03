# $OpenBSD: Makefile,v 1.2 2006/06/03 15:56:21 steven Exp $

COMMENT=	"utility to turn simply formatted text into markup" 

DISTNAME=	txt2tags-2.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	textproc	

HOMEPAGE=	http://txt2tags.sourceforge.net/

MAINTAINER=	Gleydson Soares <mail@gsoares.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/src/
EXTRACT_SUFX=	.tgz

PY_VERSION=	2.4
RUN_DEPENDS=	:python-${PY_VERSION}*:lang/python/${PY_VERSION}

PKG_ARCH=	*

NO_BUILD=	Yes
NO_REGRESS=	Yes

DOCDIR=		${PREFIX}/share/doc/txt2tags
EXAMPLESDIR=	${PREFIX}/share/examples/txt2tags

pre-configure:
	@perl -pi -e "s,%%PYTHON%%,${LOCALBASE}/bin/python${PY_VERSION}," \
		${WRKSRC}/{txt2tags,t2tconv}

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR} ${EXAMPLESDIR} ${EXAMPLESDIR}/img
	${INSTALL_SCRIPT} ${WRKSRC}/{txt2tags,t2tconv} ${PREFIX}/bin 
	${INSTALL_DATA} ${WRKSRC}/doc/{*.*,txt2tagsrc} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/samples/*.* ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/samples/img/*.* ${EXAMPLESDIR}/img
	${INSTALL_MAN} ${WRKSRC}/doc/manpage.man ${PREFIX}/man/man1/txt2tags.1

.include <bsd.port.mk>
