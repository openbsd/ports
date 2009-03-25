# $OpenBSD: Makefile,v 1.2 2009/03/25 13:39:40 jasper Exp $

COMMENT=		simple scripting language for web browsing

DISTNAME=		twill-0.9
PKGNAME=		${DISTNAME}p0
CATEGORIES=		www

HOMEPAGE=		http://twill.idyll.org/
MASTER_SITES=		http://darcs.idyll.org/~t/projects/

MAINTAINER=		Will Maier <willmaier@ml1.net>

# MIT
# Includes patched versions of:
# 	py-clientform (BSD-like or ZPL)
# 	py-mechanize (BSD-like or ZPL)
# 	py-parsing (BSD-like)
# 	py-beautifulsoup (PSF)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

REGRESS_DEPENDS=	::www/py-quixote \
    			::devel/py-nose \
			::www/tidy

MAKE_ENV+=		NOSE_WHERE=${WRKSRC}/twill

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/twill
	cd ${WRKSRC}/doc && \
		find . -type f -maxdepth 1 -name "*.txt" \
		\! \( -name "ANNOUNCE*" -o -name "ChangeLog" \) \
		-exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/twill/{} \;

.include <bsd.port.mk>
