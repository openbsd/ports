# $OpenBSD: old-install.mk,v 1.4 2001/03/22 00:23:15 espie Exp $
# Stuff that is needed for old, pre-fake, port installations.

# If ${FAKE} == No
# install		- Install the results of a build.
# reinstall		- Install the results of a build, ignoring "already installed"
#				  flag.
# deinstall		- Remove the installation.  Alias: uninstall
# package		- Create a package from an _installed_ port.

# Corresponding obsolescent variables
# PKG_DBDIR		- Where package installation is recorded (default: /var/db/pkg)
# FORCE_PKG_REGISTER - If set, it will overwrite any existing package
#				  registration information in ${PKG_DBDIR}/${FULLPKGNAME}.

# where pkg_add records its dirty deeds.
PKG_DBDIR?=		/var/db/pkg


${_FAKE_COOKIE}: ${_BUILD_COOKIE}
	@echo 1>&2 "*** ${FULLPKGNAME} does not use fake installation yet"

# The real install, old version
${_INSTALL_COOKIE}: ${_BUILD_COOKIE} 
	@cd ${.CURDIR} && exec ${MAKE} run-depends lib-depends 
.if !defined(NO_INSTALL)
	@${ECHO_MSG} "===>  Installing for ${FULLPKGNAME}"
# Kludge
.  if ${CONFIGURE_STYLE:Mimake}
	@mkdir -p /usr/local/lib/X11
	@if [ ! -e /usr/local/lib/X11/app-defaults ]; then \
		ln -sf /var/X11/app-defaults /usr/local/lib/X11/app-defaults; \
	fi
.  endif
.  if !defined(NO_PKG_REGISTER) && !defined(FORCE_PKG_REGISTER)
	@if [ -d ${PKG_DBDIR}/${FULLPKGNAME} -o "X$$(ls -d ${PKG_DBDIR}/${FULLPKGNAME:C/-[0-9].*//g}-* 2> /dev/null)" != "X" ]; then \
		echo "===>  ${FULLPKGNAME} is already installed - perhaps an older version?"; \
		echo "      If so, you may wish to \`\`make deinstall'' and install"; \
		echo "      this port again by \`\`make reinstall'' to upgrade it properly."; \
		echo "      If you really wish to overwrite the old port of ${FULLPKGNAME}"; \
		echo "      without deleting it first, set the variable \"FORCE_PKG_REGISTER\""; \
		echo "      in your environment or the \"make install\" command line."; \
		exit 1; \
	fi
.  endif
	@if [ `${SH} -c umask` != ${DEF_UMASK} ]; then \
		${ECHO_MSG} "===>  Warning: your umask is \"`${SH} -c umask`"\".; \
		${ECHO_MSG} "      If this is not desired, set it to an appropriate value"; \
		${ECHO_MSG} "      and install this port again by \`\`make reinstall''."; \
	fi
	@${_MAKE_COOKIE} ${_INSTALL_PRE_COOKIE}
.  if target(pre-install)
	@cd ${.CURDIR} && exec ${MAKE} pre-install
.  endif
.  if target(do-install)
	@cd ${.CURDIR} && exec ${MAKE} do-install
.  else
# What INSTALL normally does:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} ${INSTALL_TARGET}
# End of INSTALL.
.  endif
.  if target(post-install)
	@cd ${.CURDIR} && exec ${MAKE} post-install
.  endif
.  if defined(_MANPAGES) || defined(_CATPAGES)
.    if defined(MANCOMPRESSED) && defined(NOMANCOMPRESS)
	@${ECHO_MSG} "===>   Uncompressing manual pages for ${FULLPKGNAME}"
.      for manpage in ${_MANPAGES} ${_CATPAGES}
	@${GUNZIP_CMD} ${manpage}.gz
.      endfor
.    elif !defined(MANCOMPRESSED) && !defined(NOMANCOMPRESS)
	@${ECHO_MSG} "===>   Compressing manual pages for ${FULLPKGNAME}"
.      for manpage in ${_MANPAGES} ${_CATPAGES}
	@if [ -L ${manpage} ]; then \
		set - `file ${manpage}`; \
		shift `expr $$# - 1`; \
		ln -sf $${1}.gz ${manpage}.gz; \
		rm ${manpage}; \
	else \
		${GZIP_CMD} ${manpage}; \
	fi
.        endfor
.    endif
.  endif
.  if defined(MESSAGE)
	@cat	${WRKBUILD}/MESSAGE${SUBPACKAGE}
.  endif
.  if !defined(NO_PKG_REGISTER)
	@cd ${.CURDIR} && exec ${MAKE} fake-pkg
.  endif
.endif
	@${_MAKE_COOKIE} ${_INSTALL_COOKIE}

# Figure out where the local mtree file is
.if ${PREFIX} == "/usr/local"
MTREE_FILE?=	/etc/mtree/BSD.local.dist
.else
MTREE_FILE?=	/etc/mtree/BSD.x11.dist
.endif

plist: install
	@DESTDIR=${PREFIX} PREFIX=${PREFIX} LDCONFIG="${LDCONFIG}" MTREE_FILE=${MTREE_FILE} \
	INSTALL_PRE_COOKIE=${_INSTALL_PRE_COOKIE} \
	perl ${PORTSDIR}/infrastructure/install/make-plist ${PLIST}

# Fake installation of package so that user can pkg_delete it later.
# Also, make sure that an installed port is recognized correctly in
# accordance to the @pkgdep directive in the packing lists

fake-pkg: ${_PKG_PREREQ}
	@if [ `/bin/ls -l ${COMMENT} | awk '{print $$5}'` -gt 60 ]; then \
	    echo "** ${COMMENT} too large - installation not recorded."; \
	    exit 1; \
	 fi
	@if [ ! -d ${PKG_DBDIR} ]; then rm -f ${PKG_DBDIR}; mkdir -p ${PKG_DBDIR}; fi
.if defined(FORCE_PKG_REGISTER)
	@rm -rf ${PKG_DBDIR}/${FULLPKGNAME}
.endif
	@if [ ! -d ${PKG_DBDIR}/${FULLPKGNAME} ]; then \
		${ECHO_MSG} "===>  Registering installation for ${FULLPKGNAME}"; \
		mkdir -p ${PKG_DBDIR}/${FULLPKGNAME}; \
		${PKG_CMD} ${PKG_ARGS} -O ${PKGFILE} > ${PKG_DBDIR}/${FULLPKGNAME}/+CONTENTS; \
		cp ${WRKPKG}/DESCR${SUBPACKAGE} ${PKG_DBDIR}/${FULLPKGNAME}/+DESC; \
		cp ${COMMENT} ${PKG_DBDIR}/${FULLPKGNAME}/+COMMENT; \
		if [ -f ${WRKPKG}/INSTALL${SUBPACKAGE} ]; then \
			cp ${WRKPKG}/INSTALL${SUBPACKAGE} ${PKG_DBDIR}/${FULLPKGNAME}/+INSTALL; \
		fi; \
		if [ -f ${WRKPKG}/DEINSTALL${SUBPACKAGE} ]; then \
			cp ${WRKPKG}/DEINSTALL${SUBPACKAGE} ${PKG_DBDIR}/${FULLPKGNAME}/+DEINSTALL; \
		fi; \
		if [ -f ${WRKPKG}/REQ${SUBPACKAGE} ]; then \
			cp ${WRKPKG}}/REQ${SUBPACKAGE} ${PKG_DBDIR}/${FULLPKGNAME}/+REQ; \
		fi; \
		if [ -f ${WRKPKG}/MESSAGE${SUBPACKAGE} ]; then \
			cp ${WRKPKG}/MESSAGE${SUBPACKAGE} ${PKG_DBDIR}/${FULLPKGNAME}/+DISPLAY; \
		fi; \
		for dep in `cd ${.CURDIR} && ${MAKE} package-depends ECHO_MSG=true | ${_SORT_DEPENDS}`; do \
			if [ -d ${PKG_DBDIR}/$$dep ]; then \
				if ! grep ^${FULLPKGNAME}$$ ${PKG_DBDIR}/$$dep/+REQUIRED_BY \
					>/dev/null 2>&1; then \
					echo ${FULLPKGNAME} >> ${PKG_DBDIR}/$$dep/+REQUIRED_BY; \
				fi; \
			fi; \
		done; \
	fi

.PHONY: fake-pkg
