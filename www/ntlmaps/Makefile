# $OpenBSD: Makefile,v 1.2 2009/03/26 11:50:09 jasper Exp $

COMMENT =	http proxy to authenticate using NTLM

DISTNAME =	ntlmaps-0.9.9.0.1
PKGNAME=	${DISTNAME}p0
CATEGORIES =	www
HOMEPAGE =	http://ntlmaps.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=ntlmaps/}

MODULES =	lang/python
NO_REGRESS =	Yes

# Do some gymnastics to work around what appears to be a
# distutils bug.
pre-patch:
	@cp ${FILESDIR}/setup.py ${WRKSRC}/setup.py
	@mkdir ${WRKSRC}/ntlmaps
	@touch ${WRKSRC}/ntlmaps/__init__.py
	@mv ${WRKSRC}/lib/* ${WRKSRC}/ntlmaps/.
	@mv ${WRKSRC}/ntlmaps ${WRKSRC}/lib/.
	@rm ${WRKSRC}/__init__.py
	@mv ${WRKSRC}/main.py ${WRKSRC}/ntlmaps
	@find ${WRKSRC} -type f -print0 | xargs -r0 perl -pi -e 's,\r,,'

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ntlmaps
.for i in COPYING Install.txt changelog.txt readme.txt research.txt
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/ntlmaps/
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ntlmaps
	${INSTALL_DATA} ${WRKSRC}/server.cfg ${PREFIX}/share/examples/ntlmaps

.include <bsd.port.mk>
