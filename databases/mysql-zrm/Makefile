# $OpenBSD: Makefile,v 1.7 2010/10/18 17:06:07 espie Exp $

COMMENT =	MySQL backup scripts

V =		2.2
DISTNAME =	MySQL-zrm-$V.0
PKGNAME =	${DISTNAME:L}
REVISION =	1
CATEGORIES =	databases perl5

HOMEPAGE =	http://www.zmanda.com/

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://www.zmanda.com/downloads/community/ZRM-MySQL/$V/Source/

RUN_DEPENDS =	::archivers/gtar \
		::databases/p5-DBD-mysql \
		:gnupg-<2:security/gnupg \
		::textproc/p5-XML-Parser
		USE_GROFF =	Yes
NO_BUILD =	Yes
NO_REGRESS =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/usr/bin/mysql-zrm
	${SUBST_CMD} ${WRKSRC}/etc/mysql-zrm/mysql-zrm.conf
	@perl -pi -e 's,/usr/lib,${PREFIX}/lib,g;' \
	    -e 's,/usr/bin/mysql-,${PREFIX}/bin/mysql-,g;' \
	    -e 's,/usr/bin/zrm-,${PREFIX}/bin/zrm-,g;' \
	    ${WRKSRC}/usr/bin/mysql-zrm*

do-install:
	@find ${WRKSRC} \( -name "*.bak" -o -name "*.orig" -o -name "*.beforesubst" \) -exec rm -f {} \;
	${INSTALL_SCRIPT} ${WRKSRC}/usr/bin/* ${PREFIX}/bin/
	cd ${WRKSRC}/usr/lib; \
	    tar cf - mysql-zrm | tar xf - -C ${PREFIX}/lib/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mysql-zrm/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mysql-zrm/plugins/
	${INSTALL_SCRIPT} ${WRKSRC}/usr/share/mysql-zrm/plugins/*.pl ${PREFIX}/share/examples/mysql-zrm/plugins/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mysql-zrm/
	${INSTALL_DATA} ${WRKSRC}/usr/share/doc/${DISTNAME}/README-* ${PREFIX}/share/doc/mysql-zrm/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mysql-zrm/
	${INSTALL_DATA} ${WRKSRC}/etc/mysql-zrm/* ${PREFIX}/share/examples/mysql-zrm/
.for s in 1 5
	for i in ${WRKSRC}/usr/share/man/man$s/*.$s; do \
		${INSTALL_MAN} $$i \
		${PREFIX}/man/cat$s/`basename $${i%%.$s}`.0; \
	done
.endfor

.include <bsd.port.mk>
