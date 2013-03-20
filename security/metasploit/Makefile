# $OpenBSD: Makefile,v 1.5 2013/03/20 19:13:50 jeremy Exp $

COMMENT-main = 	penetration testing resources
COMMENT-mysql = penetration testing resources (mysql backend)
COMMENT-pgsql =	penetration testing resources (postgres backend)
CATEGORIES =	security

V =		3.5.0
PKGNAME-main =	metasploit-${V}
PKGNAME-mysql =	metasploit-mysql-${V}
PKGNAME-pgsql =	metasploit-pgssql-${V}
DISTNAME =	framework-${V}
REVISION =	1

EXTRACT_SUFX =	.tar.bz2

HOMEPAGE =	http://www.metasploit.com/
MASTER_SITES = 	${HOMEPAGE}/releases/

MAINTAINER =	Stephan A. Rickauer <stephan@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
MODRUBY_REV =	1.8
PKG_ARCH =	*
NO_BUILD =	Yes
NO_TEST =	Yes

MULTI_PACKAGES =-main -mysql -pgsql

RUN_DEPENDS-main =	${MODRUBY_ICONV_DEPENDS} \
			devel/ruby-gems \
			devel/nasm \
			net/nmap \
			net/ruby-pcaprub-msf,${MODRUBY_FLAVOR}
RUN_DEPENDS-mysql =	databases/ruby-mysql,${MODRUBY_FLAVOR} \
			security/metasploit
RUN_DEPENDS-pgsql =	databases/ruby-postgres \
			security/metasploit

SCRIPTS =	msfcli msfconsole msfd msfelfscan msfencode \
		msfmachscan msfopcode msfpayload msfpescan

WRKDIST =	${WRKDIR}/msf3
SHAREDIR =	${PREFIX}/share/metasploit
DOCDIR =	${PREFIX}/share/doc/metasploit

do-install:
	${INSTALL_SCRIPT_DIR} ${SHAREDIR}
.for s in ${SCRIPTS}
	${MODRUBY_RUBY_ADJ} ${WRKDIST}/$s
	${INSTALL_SCRIPT} ${WRKDIST}/$s ${SHAREDIR}
	@ln -s ../share/metasploit/$s ${PREFIX}/bin/$s
.endfor
.for i in tools data lib modules plugins
	@cp -R ${WRKDIST}/$i ${SHAREDIR}
.endfor
	@cp -R ${WRKDIST}/documentation ${DOCDIR}
	@find ${SHAREDIR} ${DOCDIR} -type d -name ".svn" | xargs rm -R

.include <bsd.port.mk>
