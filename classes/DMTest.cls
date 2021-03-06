/**
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND 
 *  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES 
 *  OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL 
 *  THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 *  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 *  OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
 *  OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 *  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**/

/**
* @author benahm
* @date 2017
* @description Test Class for the Data Manager
*/
@isTest
private class DMTest {
	
	@isTest 
	static void findTest() {
		Test.startTest();

		DM.IBase dmAccount=DM.base('Account');
		DM.IBase dmApexClass=DM.base('ApexClass');
 		 
		System.assertEquals(0,dmAccount.findById(new List<Id>()).size());
		System.assertEquals(0,dmAccount.findById(new Set<Id>()).size());
		System.assertEquals(0,dmAccount.findById(new List<Id>(),'Id,Name').size());
		System.assertEquals(0,dmAccount.findById(new Set<Id>(),'Id,Name').size());
		System.assertEquals(0,dmAccount.findById(new List<Id>(),'Id,Name','LIMIT 1').size());
		System.assertEquals(0,dmAccount.findById(new Set<Id>(),'Id,Name','LIMIT 1').size());
		System.assertEquals(0,dmAccount.findBy('Name','Test').size());
		System.assertEquals(0,dmAccount.findBy(Account.Name,'Test').size());
		System.assertEquals(0,dmAccount.findBy('Name','Test','Id,Name').size());
		System.assertEquals(0,dmAccount.findBy(Account.Name,'Test','Id,Name').size());
		System.assertEquals(0,dmAccount.findBy('Name','Test','Id,Name','LIMIT 1').size());
		System.assertEquals(0,dmAccount.findBy(Account.Name,'Test','Id,Name','LIMIT 1').size());
		System.assertEquals(0,dmAccount.findBy(QB.field('Name').eq('Test')).size());
		System.assertEquals(0,dmAccount.findBy(QB.field('Name').eq('Test'),'Id,Name').size());
		System.assertEquals(0,dmAccount.findBy(QB.field('Name').eq('Test'),'Id,Name','LIMIT 1').size());

		
		ApexClass dmClass=(ApexClass)DM.base('ApexClass').findOneBy('Name','DM','Id');

		System.assertNotEquals(null,dmClass);
		System.assertEquals(1,dmApexClass.findById(new List<Id>{dmClass.Id}).size());
		System.assertEquals(1,dmApexClass.findById(new Set<Id>{dmClass.Id}).size());
		System.assertEquals(1,dmApexClass.findById(new List<Id>{dmClass.Id},'Id,Name').size());
		System.assertEquals(1,dmApexClass.findById(new Set<Id>{dmClass.Id},'Id,Name').size());
		System.assertEquals(1,dmApexClass.findById(new List<Id>{dmClass.Id},'Id,Name','LIMIT 1').size());
		System.assertEquals(1,dmApexClass.findById(new Set<Id>{dmClass.Id},'Id,Name','LIMIT 1').size());

		System.assertEquals(1,dmApexClass.findBy('Name','DM').size());
		System.assertEquals(1,dmApexClass.findBy(ApexClass.Name,'DM').size());
		System.assertEquals(1,dmApexClass.findBy('Name','DM','Id').size());
		System.assertEquals(1,dmApexClass.findBy(ApexClass.Name,'DM','Id').size());
		System.assertEquals(1,dmApexClass.findBy('Name','DM','Id,Name','LIMIT 1').size());
		System.assertEquals(1,dmApexClass.findBy(ApexClass.Name,'DM','Id,Name','LIMIT 1').size());
		System.assertEquals(1,dmApexClass.findBy(QB.field('Name').eq('DM')).size());
		System.assertEquals(1,dmApexClass.findBy(QB.field('Name').eq('DM'),'Id,Name').size());
		System.assertEquals(1,dmApexClass.findBy(QB.field('Name').eq('DM'),'Id,Name','LIMIT 1').size());

		Test.stopTest();
	}
	
	@isTest 
	static void findMapTest() {
		Test.startTest();

		DM.IBase dmAccount=DM.base('Account');
		DM.IBase dmApexClass=DM.base('ApexClass');

		System.assertEquals(0,dmAccount.findMapById(new List<Id>()).values().size());
		System.assertEquals(0,dmAccount.findMapById(new Set<Id>()).values().size());
		System.assertEquals(0,dmAccount.findMapById(new List<Id>(),'Id,Name').values().size());
		System.assertEquals(0,dmAccount.findMapById(new Set<Id>(),'Id,Name').values().size());
		System.assertEquals(0,dmAccount.findMapById(new List<Id>(),'Id,Name','LIMIT 1').values().size());
		System.assertEquals(0,dmAccount.findMapById(new Set<Id>(),'Id,Name','LIMIT 1').values().size());
		System.assertEquals(0,dmAccount.findMapBy('Name','Test').values().size());
		System.assertEquals(0,dmAccount.findMapBy(Account.Name,'Test').values().size());
		System.assertEquals(0,dmAccount.findMapBy('Name','Test','Id,Name').values().size());
		System.assertEquals(0,dmAccount.findMapBy(Account.Name,'Test','Id,Name').values().size());
		System.assertEquals(0,dmAccount.findMapBy('Name','Test','Id,Name','LIMIT 1').values().size());
		System.assertEquals(0,dmAccount.findMapBy(Account.Name,'Test','Id,Name','LIMIT 1').values().size());
		System.assertEquals(0,dmAccount.findMapBy(QB.field('Name').eq('Test')).values().size());
		System.assertEquals(0,dmAccount.findMapBy(QB.field('Name').eq('Test'),'Id,Name').values().size());
		System.assertEquals(0,dmAccount.findMapBy(QB.field('Name').eq('Test'),'Id,Name','LIMIT 1').values().size());

		
		ApexClass dmClass=(ApexClass)dmApexClass.findOneBy('Name','DM','Id');

		System.assertNotEquals(null,dmClass);
		System.assertEquals(1,dmApexClass.findMapById(new List<Id>{dmClass.Id}).values().size());
		System.assertEquals(1,dmApexClass.findMapById(new Set<Id>{dmClass.Id}).values().size());
		System.assertEquals(1,dmApexClass.findMapById(new List<Id>{dmClass.Id},'Id,Name').values().size());
		System.assertEquals(1,dmApexClass.findMapById(new Set<Id>{dmClass.Id},'Id,Name').values().size());
		System.assertEquals(1,dmApexClass.findMapById(new List<Id>{dmClass.Id},'Id,Name','LIMIT 1').values().size());
		System.assertEquals(1,dmApexClass.findMapById(new Set<Id>{dmClass.Id},'Id,Name','LIMIT 1').values().size());
		
		System.assertEquals(1,dmApexClass.findMapBy('Name','DM').values().size());
		System.assertEquals(1,dmApexClass.findMapBy(ApexClass.Name,'DM').values().size());
		System.assertEquals(1,dmApexClass.findMapBy('Name','DM','Id').values().size());
		System.assertEquals(1,dmApexClass.findMapBy(ApexClass.Name,'DM','Id').values().size());
		System.assertEquals(1,dmApexClass.findMapBy('Name','DM','Id,Name','LIMIT 1').values().size());
		System.assertEquals(1,dmApexClass.findMapBy(ApexClass.Name,'DM','Id,Name','LIMIT 1').values().size());
		System.assertEquals(1,dmApexClass.findMapBy(QB.field('Name').eq('DM')).values().size());
		System.assertEquals(1,dmApexClass.findMapBy(QB.field('Name').eq('DM'),'Id,Name').values().size());
		System.assertEquals(1,dmApexClass.findMapBy(QB.field('Name').eq('DM'),'Id,Name','LIMIT 1').values().size());

		Test.stopTest();
	}


	@isTest
	static void findOneTest(){
		Test.startTest();

		DM.IBase dmAccount=DM.base('Account');
		DM.IBase dmApexClass=DM.base('ApexClass');

		System.assertEquals(null,dmAccount.findOne());
		System.assertEquals(null,dmAccount.findOneBy('Name','Test'));
		System.assertEquals(null,dmAccount.findOneBy(Account.Name,'Test'));
		System.assertEquals(null,dmAccount.findOneBy('Name','Test','Id,Name'));
		System.assertEquals(null,dmAccount.findOneBy(Account.Name,'Test','Id,Name'));
		System.assertEquals(null,dmAccount.findOneBy(QB.field('Name').eq('Test')));
		System.assertEquals(null,dmAccount.findOneBy(QB.field('Name').eq('Test'),'Id,Name'));
		System.assertNotEquals(null,dmApexClass.findOne());


		ApexClass dmClass=(ApexClass)dmApexClass.findOneBy('Name','DM','Id');
		System.assertNotEquals(null,dmClass);
		System.assertNotEquals(null,dmApexClass.findOneById(dmClass.Id));
		System.assertNotEquals(null,dmApexClass.findOneById(new Set<Id>{dmClass.Id}));
		System.assertNotEquals(null,dmApexClass.findOneById(new List<Id>{dmClass.Id}));
		System.assertNotEquals(null,dmApexClass.findOneById(dmClass.Id,'Id,Name'));
		System.assertNotEquals(null,dmApexClass.findOneById(new Set<Id>{dmClass.Id},'Id,Name'));
		System.assertNotEquals(null,dmApexClass.findOneById(new List<Id>{dmClass.Id},'Id,Name'));

		System.assertNotEquals(null,dmApexClass.findOneBy('Name','DM'));
		System.assertNotEquals(null,dmApexClass.findOneBy(ApexClass.Name,'DM'));
		System.assertNotEquals(null,dmApexClass.findOneBy('Name','DM','Id'));
		System.assertNotEquals(null,dmApexClass.findOneBy(ApexClass.Name,'DM','Id'));
		System.assertNotEquals(null,dmApexClass.findOneBy(QB.field('Name').eq('DM')));
		System.assertNotEquals(null,dmApexClass.findOneBy(QB.field('Name').eq('DM'),'Id,Name'));

		Test.stopTest();
	}
	
}
